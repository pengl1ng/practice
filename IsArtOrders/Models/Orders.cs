//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IsArtOrders.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Orders
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Orders()
        {
            this.Employee_Order = new HashSet<Employee_Order>();
        }
    
        public int OrderId { get; set; }
        public int Order_CategoryId { get; set; }
        public string Order_Wishs { get; set; }
        public string Order_DesignLink { get; set; }
        public string Order_RepLink { get; set; }
        public int Order_Status { get; set; }
        public int Order_OrdererId { get; set; }
        public int Order_Price { get; set; }
    
        public virtual Categories Categories { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Employee_Order> Employee_Order { get; set; }
        public virtual Orderers Orderers { get; set; }
        public virtual OrderStatus OrderStatus { get; set; }
    }
}
