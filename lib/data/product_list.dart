import '../model/app_image.dart';
import '../model/product_model.dart';

List<ProductModel> productItems = [
  ProductModel(
    pid: 1,
    imgUrl: AppImage.airPodMax,
    title: 'Airpod Pro Max',
    price: '1500',
    shortDescription: 'The AirPods Max boast a premium over-ear design',
    longDescription:
        'Premium Design: The AirPods Max boast a premium over-ear design, crafted with a combination of stainless steel headband and aluminum ear cups. The ear cups feature memory foam cushions covered in a breathable mesh material, offering comfort during extended listening sessions. High-Fidelity Audio: These wireless headphones deliver high-fidelity sound with rich bass, crisp mids, and clear highs. Equipped with Apple-designed dynamic drivers and advanced software, they aim to provide an immersive audio experience',
    reviews: 563,
    rating: 4.5,
  ),
  ProductModel(
    pid: 2,
    imgUrl: AppImage.airPodPro,
    title: 'Air Pod Pro',
    price: '950',
    shortDescription:
        'The AirPods Pro feature an in-ear design with three sizes of soft',
    longDescription:
        'In-ear Design: The AirPods Pro feature an in-ear design with three sizes of soft, flexible silicone ear tips to ensure a comfortable and secure fit for most users. This design also helps provide a better seal for improved active noise cancellation.Active Noise Cancellation (ANC): The AirPods Pro are equipped with active noise cancellation technology, which uses both outward-facing and inward-facing microphones to cancel out background noise, providing a more immersive listening experience.',
    reviews: 163,
    rating: 4.5,
  ),
  ProductModel(
    pid: 3,
    imgUrl: AppImage.appleWatch,
    title: 'Apple Watch Series 5',
    price: '1100.99',
    shortDescription: 'The Series 5 continued the design of the Series 4',
    longDescription:
        'Apple Watch Series 5: The Series 5 continued the design of the Series 4 but added an Always-On Retina display, allowing users to glance at the time and watch face without having to raise their wrist. It also featured a built-in compass and international emergency calling on cellular models.',
    reviews: 099,
    rating: 4.8,
  ),
  ProductModel(
    pid: 4,
    imgUrl: AppImage.appleWatch2,
    title: 'Apple Watch SE',
    price: '21',
    shortDescription:
        ' The SE model was designed to offer essential Apple Watch feature',
    longDescription:
        'Apple Watch SE: The SE model was designed to offer essential Apple Watch features at a more affordable price point. It featured the same design as the Series 6 but lacked some advanced health features like ECG and blood oxygen monitoring.',
    reviews: 163,
    rating: 4.5,
  ),
  ProductModel(
    pid: 5,
    imgUrl: AppImage.appleWatch3,
    title: 'Apple Watch Series 4',
    price: '11',
    shortDescription:
        'The Series 4 marked a significant design overhaul with larger displays and a thinner profile. ',
    longDescription:
        'Apple Watch Series 4: The Series 4 marked a significant design overhaul with larger displays and a thinner profile. It introduced advanced health features, such as an electrical heart rate sensor for ECG (electrocardiogram) recordings and fall detection capabilities.',
    reviews: 163,
    rating: 4.5,
  ),
  ProductModel(
    pid: 5,
    imgUrl: AppImage.dell,
    title: 'The Dell Latitude 5400',
    price: '11.22',
    shortDescription:
        'The Dell Latitude 5400 is a business-oriented laptop designed for professionals ',
    longDescription:
        'Business-Class Design: The Latitude 5400 features a professional and durable design, with a focus on portability and versatility. It has a sleek and modern look, making it suitable for both office environments and remote work.Display Options: The laptop offers a 14-inch display with various configuration options, including Full HD (1920 x 1080) resolution and touchscreen capability in some models. It provides a balance between screen real estate and portability.',
    reviews: 163,
    rating: 4.5,
  ),
  ProductModel(
    pid: 6,
    imgUrl: AppImage.gamingLaptop,
    title: 'Dell G Series Laptops',
    price: '43',
    shortDescription:
        'The Dell G Series includes more budget-friendly gaming laptops that still offer good gaming performance.',
    longDescription:
        'The Dell G Series includes more budget-friendly gaming laptops that still offer good gaming performance. These laptops strike a balance between affordability and gaming capabilities, making them suitable for casual and mid-level gamers. They come in various configurations to cater to different budget and performance needs.High-Performance Components: Both Alienware and Dell G Series gaming laptops are equipped with powerful processors, such as Intel Core i7 and i9 or AMD Ryzen CPUs, and dedicated graphics cards from NVIDIA GeForce or AMD Radeon. These components ensure smooth gameplay and can handle demanding tasks like content creation and video editing.',
    reviews: 181,
    rating: 4.5,
  ),
  ProductModel(
    pid: 7,
    imgUrl: AppImage.imac,
    title: 'Apple iMac ',
    price: '09.99',
    shortDescription:
        ' The iMac is renowned for its elegant and minimalist design, with a slim profile and aluminum construction.',
    longDescription: """
The iMac is renowned for its elegant and minimalist design, with a slim profile and aluminum construction. The computer's components, including the CPU, GPU, and storage, are integrated into the back of the display, resulting in a clutter-free and space-saving design.Display: The iMac comes with high-quality Retina displays that offer stunning visuals with vibrant colors and sharp details. The display sizes have varied over the years, ranging from 21.5 inches to 27 inches (measured diagonally).Performance: Apple equips the iMac with powerful processors, including Intel Core i5 and i7, and, in some models, the more recent M1 chip (as of September 2021). The iMac is designed to handle intensive tasks like video editing, graphics design, and other resource-demanding applications.Graphics: For enhanced graphics performance, some iMac models feature dedicated AMD Radeon Pro GPUs, suitable for tasks that require GPU acceleration, such as gaming and rendering.""",
    reviews: 300,
    rating: 4.5,
  ),
  ProductModel(
    pid: 8,
    imgUrl: AppImage.ipad,
    title: 'Apple Ipad',
    price: '32',
    shortDescription:
        'The iPad features a sleek and lightweight design, with a slim profile and rounded corners. ',
    longDescription:
        "The iPad features a sleek and lightweight design, with a slim profile and rounded corners. It has a large touch screen display and comes in various sizes, including standard iPad models with screen sizes around 9.7 to 10.2 inches and iPad Pro models with larger displays ranging from 11 to 12.9 inches.Retina Display: Most iPad models come with high-resolution Retina displays, providing sharp text, vibrant colors, and excellent image quality, making it suitable for various tasks like reading, watching videos, and editing photos.",
    reviews: 163,
    rating: 4.5,
  ),
  ProductModel(
    pid: 9,
    imgUrl: AppImage.iphone11,
    title: 'Iphone 11',
    price: '600',
    shortDescription:
        ' The iPhone 11 features a similar design to its predecessor, the iPhone XR.',
    longDescription:
        'The iPhone 11 features a similar design to its predecessor, the iPhone XR. It has a glass front and back with an aluminum frame. The device comes in various color options, including black, white, green, yellow, purple, and red.Display: The iPhone 11 has a 6.1-inch Liquid Retina display with a resolution of 1792 x 828 pixels. While it is not a full HD display, it still offers sharp and vibrant visuals with excellent color accuracy.',
    reviews: 1323,
    rating: 4.5,
  ),
  ProductModel(
    pid: 10,
    imgUrl: AppImage.iphone12,
    title: 'Iphone 12',
    price: '1099.00',
    shortDescription:
        'The iPhone 12 features a new design compared to its predecessor, with flat-edge aluminum frame and a glass back. ',
    longDescription:
        "The iPhone 12 features a new design compared to its predecessor, with flat-edge aluminum frame and a glass back. It comes in various color options, including black, white, blue, green, and red.Display: The iPhone 12 has a 6.1-inch Super Retina XDR display with a resolution of 2532 x 1170 pixels. It uses OLED technology, providing deeper blacks, higher contrast ratios, and improved color accuracy.",
    reviews: 1900,
    rating: 4.5,
  ),
  ProductModel(
    pid: 11,
    imgUrl: AppImage.iphone13,
    title: 'Iphone 13',
    price: '1700.99',
    shortDescription:
        ' Apple often introduces design refinements with each new iPhone iteration.',
    longDescription:
        "Apple often introduces design refinements with each new iPhone iteration. The iPhone 13 may feature a similar flat-edge design to the iPhone 12 but could include some subtle changes in materials and finish.A15 Bionic Chip: It is likely that the iPhone 13 will be powered by Apples latest A15 Bionic chip or a newer iteration, offering improved performance and energy efficiency compared to the A14 chip in the iPhone 12.",
    reviews: 231,
    rating: 4.5,
  ),
  ProductModel(
    pid: 12,
    imgUrl: AppImage.jbl,
    title: 'Jbl Speaker',
    price: '744',
    shortDescription:
        'JBL is a well-known brand that manufactures a wide range of audio products, including portable speakers.',
    longDescription:
        "JBL is a well-known brand that manufactures a wide range of audio products, including portable speakers. They offer various speaker models to suit different needs and preferences. As of my last update in September 2021, here's an overview of JBL speakers:Portable Design: JBL portable speakers are designed to be compact and lightweight, making them easy to carry around for on-the-go music enjoyment. They are perfect for outdoor activities, travel, or use in different rooms of your home.Bluetooth Connectivity: Most JBL speakers come equipped with Bluetooth technology, allowing wireless connection to smartphones, tablets, and other Bluetooth-enabled devices. This wireless connectivity ensures convenient and hassle-free music streaming without the need for cables.",
    reviews: 34240,
    rating: 4.7,
  ),
  ProductModel(
    pid: 13,
    imgUrl: AppImage.jbl1,
    title: ' Jbl Speaker T420',
    price: '980',
    shortDescription:
        'JBL is a well-known brand that manufactures a wide range of audio products, including portable speakers.',
    longDescription:
        'JBL is a well-known brand that manufactures a wide range of audio products, including portable speakers. They offer various speaker models to suit different needs and preferences. As of my last update in September 2021, heres an overview of JBL speakers:Portable Design: JBL portable speakers are designed to be compact and lightweight, making them easy to carry around for on-the-go music enjoyment. They are perfect for outdoor activities, travel, or use in different rooms of your home.Bluetooth Connectivity: Most JBL speakers come equipped with Bluetooth technology, allowing wireless connection to smartphones, tablets, and other Bluetooth-enabled devices. This wireless connectivity ensures convenient and hassle-free music streaming without the need for cables.',
    reviews: 100,
    rating: 4.5,
  ),
  ProductModel(
    pid: 14,
    imgUrl: AppImage.jbl3,
    title: 'Jbl Speaker T730',
    price: '2230',
    shortDescription:
        'JBL is a well-known brand that manufactures a wide range of audio products, including portable speakers.',
    longDescription:
        'JBL is a well-known brand that manufactures a wide range of audio products, including portable speakers. They offer various speaker models to suit different needs and preferences. As of my last update in September 2021, heres an overview of JBL speakers:Portable Design: JBL portable speakers are designed to be compact and lightweight, making them easy to carry around for on-the-go music enjoyment. They are perfect for outdoor activities, travel, or use in different rooms of your home.Bluetooth Connectivity: Most JBL speakers come equipped with Bluetooth technology, allowing wireless connection to smartphones, tablets, and other Bluetooth-enabled devices. This wireless connectivity ensures convenient and hassle-free music streaming without the need for cables.',
    reviews: 3000,
    rating: 4.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.jblHeadphone,
    title: 'Jbl HeadPhone r34x',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.jbl4,
    title: 'Jbl HeadPhone r34x',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.jbl5,
    title: 'Jbl HeadPhone r34x',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.macbookPro,
    title: 'MacBook Pro',
    price: '3900',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.samsung,
    title: 'Samsung Galaxy',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.samsungBuds,
    title: 'Samsung Buds',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.samsungTv,
    title: 'Samsung Smart Tv',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.samsungWashingMachine,
    title: 'Washing Machine',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.sandisk,
    title: 'Flash Drive 32 gb',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.sandisk64,
    title: 'Flash Drive 64gb',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.windows,
    title: 'Windows 10 NoteBook',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
  ProductModel(
    pid: 15,
    imgUrl: AppImage.windows10,
    title: 'Windows HP Laptop',
    price: '500',
    shortDescription:
        'Many JBL headphones are wireless and utilize Bluetooth technology ',
    longDescription:
        'Wireless Headphones: Many JBL headphones are wireless and utilize Bluetooth technology for a cable-free listening experience. Wireless headphones offer the convenience of mobility and freedom from tangled wires.In-Ear Headphones: JBL offers in-ear headphones that fit snugly inside the ear canal, providing a secure and comfortable fit. Some models come with multiple ear tip sizes to ensure a personalized fit.',
    reviews: 30,
    rating: 3.5,
  ),
];
