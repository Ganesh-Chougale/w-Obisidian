# 1. Person
### 1. DTO
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.DTO.Transactions.Objects
{
    public class DTOPerson
    {
        public int PERSON_ID { get; set; }
        public string FULL_NAME { get; set; }
        public string DOB { get; set; }
    }
}
```  

### 2. INTERFACE
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Project.DTO.Transactions.Objects;

namespace Project.DTO.Transactions.Interfaces
{
    public interface IPerson
    {
        List<DTOMaterialMdnStatus> GetAllPersonList();
        DTOMaterialMdnStatus GetSinglePerson(int personId);
    }
}
```  
### 3. DAL

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZanvarGroup.Erp.DTO.Transactions.Objects;
using Dapper;
using Project.DTO.Transactions.Interfaces;

namespace Project.DALDapper.Implementation.Transactions
{
    public class DALPerson : IPerson
    {
        public List<DTOPerson> GetAllPersonList()
        {
            try
            {
                List<DTOPerson> lst = new List<DTOPerson>();
                using(ConManager con = new ConManager())
                {
                    string query = $@"
                                        SELECT
	                                        *
                                        FROM
	                                        PERSON
                                    ";

                    lst = con.transactionDb.Query<DTOPerson>(query).ToList();
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DTOPerson GetSinglePerson(int personId)
        {
            try
            {
                string query = $@"
                                    SELECT
	                                    *
                                    FROM
	                                    PERSON
                                    WHERE 
	                                    PERSON_ID = @PID
                                ";
                DTOPerson obj = new DTOPerson();
                using (ConManager con = new ConManager())
                {
                    obj = (DTOPerson)con.transactionDb.Query<DTOPerson>(query, new { PID = personId }).Single();
                }
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}

```  

### 4. BUSINESS  