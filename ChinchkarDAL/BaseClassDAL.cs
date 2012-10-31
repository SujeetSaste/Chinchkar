using System;
using System.Text;

namespace ChinchkarDAL
{
    public abstract class BaseClassDAL
    {
        protected SqlBaseClassDAL DAL;

        public BaseClassDAL()
        {
            InstanTiateDAL();
        }

        private void InstanTiateDAL()
        {
            if (DAL == null)
            {
                DAL = new SqlBaseClassDAL();
            }
        }
    }
}
