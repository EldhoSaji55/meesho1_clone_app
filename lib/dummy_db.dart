class DummyDb {
  static List CircleAvatarList = [
    {
      "imageurl":
          'https://images.pexels.com/photos/20702673/pexels-photo-20702673/free-photo-of-elegant-woman-posing-in-traditional-clothing.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Kurti & Dresses'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/17590560/pexels-photo-17590560/free-photo-of-woman-in-a-black-hat-and-cowboy-boots.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Westernwear'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/5625123/pexels-photo-5625123.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Mall'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/28322412/pexels-photo-28322412/free-photo-of-young-man-in-leather-jacket-outdoors-at-dusk.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Menswear'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/3661264/pexels-photo-3661264.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Kids & Toys'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/5377395/pexels-photo-5377395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Saree'
    },
    // New Entries
    {
      "imageurl":
          'https://images.pexels.com/photos/1124466/pexels-photo-1124466.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Footwear'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/9706517/pexels-photo-9706517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Jewelry'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/7953286/pexels-photo-7953286.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Bags & Purses'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/11063010/pexels-photo-11063010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Sportswear'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/9895885/pexels-photo-9895885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Sleepwear'
    },
    {
      "imageurl":
          'https://images.pexels.com/photos/3685495/pexels-photo-3685495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      "text": 'Accessories'
    },
  ];

  static List ProductList = [
    {
      "Category": "Men Shirt",
      "Gender": ["Men", "Boys"],
      "Brand": "North Republic",
      "Color": ["red", "yellow", "green", "blue"],
      "imageUrl":
          "https://images.pexels.com/photos/28581567/pexels-photo-28581567/free-photo-of-fashionable-man-in-sunglasses-outdoors.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "cotton",
      "size": ["S", "M", "L", "XL"],
      "price": [
        {"S": "550"},
        {"M": "750"},
        {"L": "999"},
        {"XL": "1400"}
      ],
      "rating": "4.5",
      "Discount": [
        {"S": "520"},
        {"M": "700"},
        {"L": "959"},
        {"XL": "1300"}
      ],
      "userCount": "14499",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": true,
    },
    {
      "Category": "Jewellery",
      "Gender": ["Women"],
      "Brand": "Elegant Shine",
      "Color": ["gold", "silver", "rose gold"],
      "imageUrl":
          "https://images.pexels.com/photos/5837666/pexels-photo-5837666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "metal",
      "size": ["Free Size"],
      "price": [
        {"Free Size": "1500"}
      ],
      "rating": "4.7",
      "Discount": [
        {"Free Size": "1400"}
      ],
      "userCount": "8795",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": false,
    },
    {
      "Category": "T-Shirt",
      "Gender": ["Men", "Women"],
      "Brand": "Street Wear",
      "Color": ["black", "white", "grey"],
      "imageUrl":
          "https://images.pexels.com/photos/1656684/pexels-photo-1656684.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "polyester",
      "size": ["S", "M", "L", "XL", "XXL"],
      "price": [
        {"S": "350"},
        {"M": "450"},
        {"L": "550"},
        {"XL": "600"},
        {"XXL": "650"}
      ],
      "rating": "4.3",
      "Discount": [
        {"S": "300"},
        {"M": "400"},
        {"L": "500"},
        {"XL": "550"},
        {"XXL": "600"}
      ],
      "userCount": "5623",
      "trusted": false,
      "Timeroffer": true,
      "mallProduct": true,
    },
    {
      "Category": "Shoes",
      "Gender": ["Men"],
      "Brand": "Runner",
      "Color": ["black", "white", "blue"],
      "imageUrl":
          "https://images.pexels.com/photos/1598508/pexels-photo-1598508.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "leather",
      "size": ["6", "7", "8", "9", "10"],
      "price": [
        {"6": "1200"},
        {"7": "1300"},
        {"8": "1400"},
        {"9": "1500"},
        {"10": "1600"}
      ],
      "rating": "4.8",
      "Discount": [
        {"6": "1100"},
        {"7": "1200"},
        {"8": "1300"},
        {"9": "1400"},
        {"10": "1500"}
      ],
      "userCount": "19231",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": false,
    },
    {
      "Category": "Watches",
      "Gender": ["Unisex"],
      "Brand": "Timeless",
      "Color": ["black", "silver", "gold"],
      "imageUrl":
          "https://images.pexels.com/photos/1697218/pexels-photo-1697218.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "metal",
      "size": ["Free Size"],
      "price": [
        {"Free Size": "2500"}
      ],
      "rating": "4.9",
      "Discount": [
        {"Free Size": "2400"}
      ],
      "userCount": "24501",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": true,
    },
    {
      "Category": "Laptop",
      "Gender": ["Unisex"],
      "Brand": "TechPro",
      "Color": ["grey", "silver", "black"],
      "imageUrl":
          "https://images.pexels.com/photos/6893332/pexels-photo-6893332.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "aluminum",
      "size": ["13-inch", "15-inch"],
      "price": [
        {"13-inch": "85000"},
        {"15-inch": "95000"}
      ],
      "rating": "4.6",
      "Discount": [
        {"13-inch": "82000"},
        {"15-inch": "92000"}
      ],
      "userCount": "7501",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": true,
    },
    {
      "Category": "Mobile",
      "Gender": ["Unisex"],
      "Brand": "SmartTech",
      "Color": ["black", "blue", "white"],
      "imageUrl":
          "https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "plastic",
      "size": ["64GB", "128GB", "256GB"],
      "price": [
        {"64GB": "15000"},
        {"128GB": "18000"},
        {"256GB": "22000"}
      ],
      "rating": "4.7",
      "Discount": [
        {"64GB": "14000"},
        {"128GB": "17000"},
        {"256GB": "21000"}
      ],
      "userCount": "5403",
      "trusted": false,
      "Timeroffer": true,
      "mallProduct": true,
    },
    {
      "Category": "Men T-Shirt",
      "Gender": ["Men"],
      "Brand": "Urban Cool",
      "Color": ["black", "grey", "white"],
      "imageUrl":
          "https://images.pexels.com/photos/12446372/pexels-photo-12446372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "cotton",
      "size": ["S", "M", "L", "XL"],
      "price": [
        {"S": "450"},
        {"M": "500"},
        {"L": "550"},
        {"XL": "600"}
      ],
      "rating": "4.4",
      "Discount": [
        {"S": "400"},
        {"M": "450"},
        {"L": "500"},
        {"XL": "550"}
      ],
      "userCount": "9865",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": true,
    },
    {
      "Category": "Jewellery",
      "Gender": ["Women"],
      "Brand": "Classic Gold",
      "Color": ["gold", "silver"],
      "imageUrl":
          "https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "gold",
      "size": ["Free Size"],
      "price": [
        {"Free Size": "5500"}
      ],
      "rating": "4.8",
      "Discount": [
        {"Free Size": "5000"}
      ],
      "userCount": "12789",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": false,
    },
    {
      "Category": "Shoes",
      "Gender": ["Women"],
      "Brand": "Comfort Walk",
      "Color": ["black", "brown", "grey"],
      "imageUrl":
          "https://images.pexels.com/photos/2048548/pexels-photo-2048548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "leather",
      "size": ["5", "6", "7", "8"],
      "price": [
        {"5": "1200"},
        {"6": "1300"},
        {"7": "1400"},
        {"8": "1500"}
      ],
      "rating": "4.7",
      "Discount": [
        {"5": "1150"},
        {"6": "1250"},
        {"7": "1350"},
        {"8": "1450"}
      ],
      "userCount": "11023",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": false,
    },
    {
      "Category": "Watches",
      "Gender": ["Men"],
      "Brand": "Luxury Time",
      "Color": ["silver", "gold"],
      "imageUrl":
          "https://images.pexels.com/photos/380782/pexels-photo-380782.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "stainless steel",
      "size": ["Free Size"],
      "price": [
        {"Free Size": "6000"}
      ],
      "rating": "4.9",
      "Discount": [
        {"Free Size": "5700"}
      ],
      "userCount": "8541",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": true,
    },
    {
      "Category": "Laptop",
      "Gender": ["Unisex"],
      "Brand": "WorkPro",
      "Color": ["silver", "grey"],
      "imageUrl":
          "https://images.pexels.com/photos/11514417/pexels-photo-11514417.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "aluminum",
      "size": ["14-inch", "16-inch"],
      "price": [
        {"14-inch": "60000"},
        {"16-inch": "70000"}
      ],
      "rating": "4.7",
      "Discount": [
        {"14-inch": "58000"},
        {"16-inch": "68000"}
      ],
      "userCount": "4523",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": true,
    },
    {
      "Category": "Mobile",
      "Gender": ["Unisex"],
      "Brand": "PhoneMax",
      "Color": ["black", "blue", "white"],
      "imageUrl":
          "https://images.pexels.com/photos/257923/pexels-photo-257923.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "metal",
      "size": ["128GB", "256GB", "512GB"],
      "price": [
        {"128GB": "30000"},
        {"256GB": "35000"},
        {"512GB": "45000"}
      ],
      "rating": "4.8",
      "Discount": [
        {"128GB": "28000"},
        {"256GB": "33000"},
        {"512GB": "43000"}
      ],
      "userCount": "7203",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": true,
    },
    {
      "Category": "Men Shirt",
      "Gender": ["Men"],
      "Brand": "Casual Wear",
      "Color": ["blue", "green", "grey"],
      "imageUrl":
          "https://images.pexels.com/photos/6210323/pexels-photo-6210323.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "cotton",
      "size": ["M", "L", "XL", "XXL"],
      "price": [
        {"M": "600"},
        {"L": "750"},
        {"XL": "900"},
        {"XXL": "1100"}
      ],
      "rating": "4.5",
      "Discount": [
        {"M": "580"},
        {"L": "720"},
        {"XL": "860"},
        {"XXL": "1050"}
      ],
      "userCount": "13265",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": true,
    },
    {
      "Category": "Jewellery",
      "Gender": ["Women"],
      "Brand": "Shimmer Jewels",
      "Color": ["silver", "platinum"],
      "imageUrl":
          "https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "silver",
      "size": ["Free Size"],
      "price": [
        {"Free Size": "5000"}
      ],
      "rating": "4.6",
      "Discount": [
        {"Free Size": "4800"}
      ],
      "userCount": "9632",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": false,
    },
    {
      "Category": "Shoes",
      "Gender": ["Men"],
      "Brand": "Sportify",
      "Color": ["red", "black", "blue"],
      "imageUrl":
          "https://images.pexels.com/photos/292998/pexels-photo-292998.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "synthetic",
      "size": ["7", "8", "9", "10"],
      "price": [
        {"7": "1300"},
        {"8": "1350"},
        {"9": "1450"},
        {"10": "1500"}
      ],
      "rating": "4.5",
      "Discount": [
        {"7": "1200"},
        {"8": "1250"},
        {"9": "1350"},
        {"10": "1400"}
      ],
      "userCount": "14350",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": true,
    },
    {
      "Category": "Watches",
      "Gender": ["Women"],
      "Brand": "Elegant Times",
      "Color": ["rose gold", "silver"],
      "imageUrl":
          "https://images.pexels.com/photos/11403924/pexels-photo-11403924.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "stainless steel",
      "size": ["Free Size"],
      "price": [
        {"Free Size": "5500"}
      ],
      "rating": "4.7",
      "Discount": [
        {"Free Size": "5200"}
      ],
      "userCount": "9023",
      "trusted": true,
      "Timeroffer": true,
      "mallProduct": false,
    },
    {
      "Category": "Men Trousers",
      "Gender": ["Men"],
      "Brand": "Formal Line",
      "Color": ["black", "grey", "navy"],
      "imageUrl":
          "https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "fabric": "polyester",
      "size": ["30", "32", "34", "36"],
      "price": [
        {"30": "800"},
        {"32": "850"},
        {"34": "900"},
        {"36": "950"}
      ],
      "rating": "4.3",
      "Discount": [
        {"30": "780"},
        {"32": "820"},
        {"34": "870"},
        {"36": "920"}
      ],
      "userCount": "7321",
      "trusted": true,
      "Timeroffer": false,
      "mallProduct": true,
    }
  ];
}
