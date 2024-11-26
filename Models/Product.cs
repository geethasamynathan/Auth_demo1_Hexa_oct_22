namespace Auth_demo1.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Brand { get; set; }
        public decimal Price { get; set; }
        public int Available_stock { get; set; }
        public string Image { get; set; }
        public string Description
        {
            get; set;
        }
    }
}
