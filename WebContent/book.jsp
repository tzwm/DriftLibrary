<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Drift Library</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" href="css/custom.css">
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>

    <script type="text/javascript"> 
       /*  $.getJSON('https://api.douban.com/v2/book/2567698?apikey=05fda08443dc365f11f8e18ccb94a31d&callback=?', function(data) {
            document.getElementById("bookBox_cover").src = data.image;
            document.getElementById("bookBox_info_title").innerHTML = data.title;
            var str = data.summary; 
            str = "<p>" +str + "</p>";
            str = str.replace(/\n/g, "</p>\n<p>");
            document.getElementById("summary").innerHTML = str; 
        }); */
    </script>
    
	<header class="navbar navbar-fixed-top navbar-inverse">
		<div class="navbar-inner">
			<div class="container-fluid">
				<nav>
					<ul class="nav">
						<li><a id="logo" href="#">Drift Library</a></li>
					</ul>

                    <form class="form-search header_search" action="#">
                        <div class="input-append">
                            <input class="span2 search-query" type="text" placeholder="你想要的图书" />
                            <button class="btn">搜索</button>
                        </div>
                    </form>

				</nav>
			</div>
		</div>
	</header>

    <div class="row-fluid">
        <div class="span6 offset2">
            <div class="content">
                <div class="bookBox">
                    <img id="bookBox_cover" src="${book.image }" alt="cover" />
                    <div class="bookBox_info">
                        <h3 id="bookBox_info_title">${book.title }</h3>
                        <ul id="bookBox_info_info">
                            <li>副标题:${book.subtitle})</li>
                            <li>作者:${book.author }</li>
                            <li>出版社:${book.publisher}</li>
                        </ul>
                    </div>
                    <div class="bookBox_count">
                        <span>
                            <label id="count_want">0</label>
                            想借
                        </span>
                        <span>
                            <label id="count_current">0</label>
                            当前库存
                        </span>
                        <span>
                            <label id="count_total">0</label>
                            总库存
                        </span>
                    </div>

                    <div class="book_activity">
                        <button class="btn btn-primary">想借</button>
                        <button class="btn btn-primary">捐赠</button>
                    </div>

                </div>
                <div class="book_summary">
                    <h3 class="mb5">本书简介</h3>
                    <div id="summary" class="summary">${book.summary }</div>
                </div>    
            </div>
        </div>

        <div class="span2">
            <div> 
                <div class="content book_info_box">
                    <h3 class="mb5">其它信息</h3>
                    <ul>
                        <li>ISBN:${book.isbn}</li>
                        <li>出版社:${book.publisher }</li>
                        <li>出版年:${book.pubdate }</li>
                        <li>豆瓣链接:<a href="${book.url }">${book.title }</a></li>
                    </ul>
                </div> 
                <div class="content">
                    <h3 class="mb5">标签</h3>
                </div>
            </div>
        </div>
    </div>

</body>