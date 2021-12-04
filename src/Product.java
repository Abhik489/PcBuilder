
public class Product {
     
	   int productID;
	   String productName;
	   String brand;
	   String ptype;
	   public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	long productPrice;
	   String cpuBrand;
	   int cpuCores;
	   double cpuSpeed;
	   String gpuName;
	   String memoryType;
	   int ramSize;
	   int batteryLife;
	   String photoRef;
			
			public int getProductID() {
				return productID;
			}
			public void setProductID(int productID) {
				this.productID = productID;
			}
			public String getProductName() {
				return productName;
			}
			public void setProductName(String productName) {
				this.productName = productName;
			}
			public long getProductPrice() {
				return productPrice;
			}
			public void setProductPrice(long productPrice) {
				this.productPrice = productPrice;
			}
	   
}
