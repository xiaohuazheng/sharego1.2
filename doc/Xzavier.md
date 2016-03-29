基于网络爬虫的商品评论网站

软件工程

学生  郑晓华   指导老师  陈文


[摘要]  随着互联网的不断创新、发展和普及，网上购物越来越受到热捧。电子商务是电子信息和互联网技术结合厂商或其他交易主体之间进行的信息商务活动，而网上购物正是这种活动的表现形式之一。。网上购物影响我们的生活越来越深。2015年11月11日，淘宝、天猫“双十一购物狂欢节”成交额高达912.17亿人名币，网上购物的用户越来越多。而人们购物的选择则是基于物品的外观、价格和评价等，其中，外界的评价很大程度上影响着用户购买的选择。用户进入购物网站，看到了自己满意的商品，人们会浏览关于商品的评论，帮助自己的分析，最后决定是否购买。但是，随着网络站点的大量增长，网络中的信息量也增大了许多。非常庞杂的信息使得用户在挑选自己满意的商品时显得非常麻烦。本网站是基于网络爬虫的商品评论网站，利用网络爬虫爬取网站对商品的热门评论数据，在web端显示商品主要的评价。提供给用户关于商品的最集中的评论数据，以帮助用户进行选择，帮助用户区分商品是否值得购买，节约时间和成本，提高整个购物的效率。技术方面，本商品评论网站基于网络爬虫，采用Node.js 、express、MySQL的技术开发，利用功能库superagent获取数据，并对数据以图表的方式直观的展现在用户面前，提升用户购物体验，推荐电子上午商务购物平台的发展。
[主题词]  网络爬虫；Node；Express；数据爬取

[Abstract]  With the innovation of the Internet, the development and popularity of online shopping more and more favorable. E-commerce is electronic information and Internet technologies or other transactions between manufacturers were the main business information, online shopping and it is one of the manifestations of such activities. . Online shopping affects our lives more and more. November 11, 2015, Taobao, Lynx 'two-eleven shopping carnival "names turnover of up to 91.217 billion dollars, online shopping more and more users. And people shopping options is based on appearance, price and evaluation of articles, etc., which greatly affects the external evaluation of select users to buy. Users enter the shopping site, saw his satisfaction with the goods, people will browse on product reviews to help its own analysis, the final decision whether to buy. However, with the growth of a large number of network stations, the network also increases the amount of information a lot. Very heterogeneous information allows users to select their own satisfaction with the goods when it is very troublesome. This site is based on the product review site web crawler using web crawlers crawling the site for product reviews popular data evaluation shows the main commodities in the web side. Available to users on the most concentrated product reviews data to help users choose to help users distinguish the goods worth buying, saving time and costs, improve the efficiency of the entire shopping. Technical aspects of the product review site based web crawler using Node.js, express, MySQL technology development, the use of function libraries superagent access to data, and the data graphically intuitive display in front of the user, to enhance the user's shopping experience, recommended development of e-commerce shopping platform morning.

[Key Words]  web crawler; Node; Express; crawling data

1.	绪论
1.1.	项目背景
	随着互联网的不断创新、发展和普及，网上购物越来越受到热捧。电子商务是电子信息和互联网技术结合厂商或其他交易主体之间进行的信息商务活动，而网上购物正是这种活动的表现形式之一。网上购物影响我们的生活越来越深。2015年11月11日，淘宝、天猫“双十一购物狂欢节”成交额高达912.17亿人名币，网上购物的用户越来越多。而人们购物的选择则是基于物品的外观、价格和评价等，其中，外界的评价很大程度上影响着用户购买的选择。用户进入购物网站，看到了自己满意的商品，人们会浏览关于商品的评论，帮助自己的分析，最后决定是否购买。但是，随着网络站点的大量增长，网络中的信息量也增大了许多。非常庞杂的大量的信息量使得用户在购买自己满意的商品时显得非常麻烦。这时候，一个基于网络爬虫的商品评论网站就显得非常有必要了，基于网络爬虫的商品评论网站利用网络爬虫爬取网站对商品的热门评论数据，在web端显示商品主要的评价。提供给用户关于商品的最集中的评论数据，以帮助用户进行选择，帮助用户区分商品是否值得购买，节约时间和成本，提高整个购物的效率。本商品评论网站基于网络爬虫，采用Node.js 、MySQL的技术开发，获取数据真实有效，提升用户购物体验。
	 Node.js是一个基于Chrome JavaScript运行时建立的平台， 用于方便地搭建响应速度快、易于扩展的网络应用。Node.js 使用事件驱动， 非阻塞I/O 模型而得以轻量和高效，非常适合在数据密集型的应用。以Node为服务则让网络爬虫系统实现起来意义非常，而它的功能库superagent和async更是让数据爬取更加便捷。
	综上，通过Node.js开发一个界面美观，功能丰富的基于网络爬虫的商品评论网站，是便利网上购物用户的需要。对于网上购物者来说，这是件十分有意义的事。同时由于Node.js使用事件驱动， 非阻塞I/O 模型而得以轻量和高效的特点，使用Node.js开发一个基于网络爬虫的商品评论网站非常便捷和高效。
1.2.	国内外研究现状
	国内外的购物网站，一般都是购物之后对商品进行简单评论，评论内容就按时间顺序显示在商品下方，没有把相关数据进行分析，集中式展示重要评论。国外网站诸如亚马逊、Amazon、Yoox、eLUXURY  LVMH，国内网站诸如淘宝，天猫，拍拍等皆是如此。当然，除了这些购物网站，还有很多导购网站,而导购网站的模式各不相同。有如下模式：
	对比价格模式 ：国外有以PriceGrabber、Shopping为代表，国内则有如聪明点、一比二购为代表的网站，这类网站收集各个购物网站产品价格进行对比，同时提供产品价格走势。
	购买返现模式 ：国外有以FatWallet为代表，国内有以易购网、特价王为代表的网站。这类网站用户通过该门户进入相应的购物网站，在购物后获取返现。这类网站主要和各个购物网站达成返现比例提成的方式来进行营利，其本身主要是各个购物网站的入口。
	论坛信息+首页模式 ：国外有以DealSea、SlickDeals为代表，国内有以我爱打折网、上海打折网为代表的网站。这类网站用户通过论坛发布折扣信息，然后在首页按照时间和人气进行排序限时折扣信息列表。这类网站很多折扣信息由自己网站和其他合作伙伴进行发布。
	社会购物模式 ：国外有边以Kaboodle、CrowStrom为代表，国内有以逛、蘑菇街、折800为代表的网站。这类建立在人们喜欢Social Shopping的感觉，随着社会购物能力的增大，发展也越好。
	但是目前这类导购网站有着一个很明显的不足之处。那就是用户买完商品后很随意的在结账后进行评论，用户进行购买时阅读评论，只能根据时间线索来进行查看，自己分析评论数据。耗费了用户时间来总结评论或看一些没有价值的评论。
	对于爬虫技术，2014年4月3日爬虫软件“网络神采”爬取了亚马逊网上手机销售排行榜前100名的产品信息，其中很重要的一点包括爬取了商品相关的评论数量、评论平均星级以及每条评论的内容。但是，国内类似事件基本没有发生，国内基于网络评论的导购网站尚不成熟。
	基于这种考虑，我们决定搭建一个商品评论网站，帮助用户进行商品选择。本网站基于网络爬虫，爬取网站对商品的热门评论，对评论进行分析，帮助用户节约人力、时间和金钱。而Node.js 使用事件驱动， 非阻塞I/O 模型而得以轻量和高效，非常适合在数据密集型的应用。以Node为服务则让网络爬虫系统实现起来意义非常，而它的功能库superagent和async更是让数据爬取更加便捷。
	总的来说，使用Node.js进行数据的爬取实现网络爬虫是现在很多程序员的选择。由于全栈工程师越老越受到互联网的重视，使用Node.js+前端实现一个网站将会越来越重要。
1.3.	项目主要工作
	本网站的设计是为了解决用户由于非常庞杂的评论信息量使得用户在购买商品时显得非常麻烦，浏览各种评论耗费大量时间和人力的问题而搭建的基于网络爬虫的商品评论网站。用户浏览本网站的商品评论，有的放矢，能很快的了解到这个商品的信息，节约时间和成本。
	本文主要介绍了如何基于Node.js来开发一个网络爬虫系统。包括如何利用Express+ejs框架设计一个前端展示商品信息及商品评论数据的解决方案、如何有效的使用Node的路由机制来进行系统各个模块之间的设计、如何实现前端与后端的沟通以及如何成长为一个全栈工程师的问题。
	论文的主要工作集中在以下几个方面：
	1)	整个系统的设计，系统各个模块的设计。
	2)	系统实现的理论基础以及相关的页面设计。
	3)	商品信息爬取、页面显示、评论数据图表化的设计与实现。
	4)	系统的测试工作。
1.4.	报告组织与结构
	第一部分：绪论。主要介绍购物网站的基于爬虫系统的导购网站的背景，以及相关领域的国内外研究情况。
	第二部分：介绍基于Node.js的网络爬虫系统开发过程当中会用到的一些关键性的技术和知识，方便系统开发和实现部分的阅读与理解。 
	第三部分：基于Node.js网络爬虫系统的商品评论网站的开发和实现细节，是本报告的主体部分。 包括了系统的整体框架、模块定义、功能分配、系统各个模块的设计思想、重要功能的逻辑流程以及模块的接口设计等。就设计思路方面阐述了第二部分的知识理论如何在本系统中有效的利用。
	第四部分：基于Node.js网络爬虫系统的商品评论网站的测试。这部分针对系统的各个模块设计出了测试用例，并通过表格的形式反映系统各个功能的测试结果。
	第五部分：对基于Node.js网络爬虫系统的商品评论网站开发工作的评价。
	第六部分：总结部分，就本网站的完成情况与不足，结合值得完善的地方作出总结，阐述下一步的计划。 
	 
2.	项目涉及的相关知识和技术简介
2.1.	Node.js简介
Node.js是一个基于Chrome JavaScript运行时建立的平台， 用于方便地搭建响应速度快、易于扩展的网络应用。Node.js 使用事件驱动， 非阻塞I/O 模型而得以轻量和高效，非常适合在分布式设备上运行的数据密集型的实时应用。Node.js是一个Javascript运行环境(runtime)。实际上它是对Google V8引擎进行了封装。V8引 擎执行Javascript的速度非常快，性能非常好。Node对一些特殊用例进行了优化，提供了替代的API，使得V8在非浏览器环境下运行得更好。Node.js可以在不新增额外线程的情况下，依然可以对任务进行并行处理，因为Node.js是单线程的。它通过事件轮询（event loop）来实现并行操作，对此，要充分利用这一点,那就是尽可能的避免阻塞操作，取而代之，多使用非阻塞操作。
2.2.	Node.js的事件机制简介
Node.js中大部分的模块，都继承自Event模块。Event模块（events.EventEmitter）是一个简单的事件监听器模式的实现。具有addListener/on，once，removeListener，removeAllListeners，emit等基本的事件监听模式的方法实现。它与前端DOM树上的事件并不相同，因为它不存在冒泡，逐层捕获等属于DOM的事件行为，也没有preventDefault()、stopPropagation()、 stopImmediatePropagation() 等处理事件传递的方法。
而事件侦听器模式也是一种事件钩子（hook）的机制，利用事件钩子导出内部数据或状态给外部调用者。Node.js中的很多对象，大多具有黑盒的特点，功能点较少，如果不通过事件钩子的形式，对象运行期间的中间值或内部状态，是我们无法获取到的。这种通过事件钩子的方式，可以使编程者不用关注组件是如何启动和执行的，只需关注在需要的事件上即可。
2.3.	Express框架简介
Express是一个基于Node.js平台的极简、灵活的 web 应用开发框架，它提供一系列强大的特性，可以创建各种Web和移动设备应用。丰富的HTTP快捷方法和任意排列组合的Connect中间件，让创建健壮、友好的API变得既快速又简单。
2.4.	Express路由简介
客户端发起请求，然后服务端进行处理，最后返回相关数据。客户端要发起请求，首先需要一个标识，通常情况下是URL，通过这个标识将请求发送给服务端的某个具体处理程序，在这个过程中，请求可能会经历一系列全局处理，比如验证、授权、URL解析等，然后定位到某个处理程序进行业务处理，最后将生成的数据返回客户端，客户端将数据结合视图模版呈现出合适的样式。从客户端请求到服务器端处理程序的过程，也就叫做路由，其实就是如何定位到服务端处理程序的过程。我们会在后文中继续从代码层分析Express路由。
2.5.	Superagent简介
SuperAgent是一个小的客户端的HTTP请求库，并同样运行在Node.js的模块，有许多高级HTTP客户端功能。SuperAgent在爬取网页方面是一个能手，通过它的get方法可以获取到对应的URL的内容，加上一些库比如Cheerio的方法，可以很便捷的获取到网页中想要的数据。后面会在代码中对Superagent更深入的探索。
 
3.	系统设计与开发
3.1.	项目概况

本系统为windows环境下基于Node.js开发的一个基于网络爬虫系统的商品评论网站。整个系统由PC网页端和服务器两个部分组成。服务器部署于Node上，PC网页端的开发和测试以及服务器的搭建都在Windows系统上进行，数据爬取是基于Node.js的一个功能库Superagent爬取一个电商购物网站的数据。整个系统的PC网页端部分要求能够实时的展示爬取的网页上的商品，并对商品进行分类，商品的基本信息完善。对于每个商品，对爬取到的与评论有关的数据进行图表展示，直观的反应出该商品的优劣。并在PC端展示该产品的评论信息，以供用户更加深入的进行判断。服务器部分则需要支持整个网站的运营以及后台管理，数据爬起等。

3.2.1.	设计目的
概要设计是通过需求分析对系统进行一个宏观上的设计，是系统的蓝图。它可以用来评估总体设计的可行性，并且为后面的详细设计工作提供指导和模块完整性的检查。通过概要设计，最主要的是要设计出系统的结构关系以及各个模块之间的联系。概要设计对本网站的实现起着至关重要的作用。
