<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>{TITLE}</title>
    <meta name="description" content="{DESCRIPTION}"/>
    <meta name="keywords" content="{KEYWORDS}"/>
    <meta name="Resource-type" content="Document"/>
    <link rel="stylesheet" type="text/css" href="/templates/default/css/examples.css"/>
    <link rel="stylesheet" type="text/css" href="/templates/default/css/style.css"/>
    <link href="/templates/default/css/jscrollpane.css" rel="stylesheet"/>
    <link href="/templates/default/css/jcarousel.basic.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="/templates/default/images/favicon.png" type="image/png">
    <!--[if IE]>
    <script type="text/javascript">
        var console = {
            log: function () {
            }
        };
    </script>
    <![endif]-->
    <style>
        .stub {
            position: fixed;
            z-index: 1001;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.45);
        }

        .btn-submit {vertical-align:top;} .stub-send {
            position: fixed;
            z-index: 1100;
            top: 50%;
            left: 50%;
            width: 340px;
            padding: 30px;
            background: #f7f7f7;
            color: #292828;
            text-align: center;
            border-radius: 3px;
            margin: -100px 0 0 -170px;
        }

        .stub-cross {
            width: 30px;
            height: 30px;
            background: url(templates/default/images/bg-cross.png) 50% 50% no-repeat;
            cursor: pointer;
            position: absolute;
            top: 10px;
            right: 10px;
            opacity: .8;
        }
    </style>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="/templates/default/js/jquery.fullPage.js"></script>
    <script type="text/javascript" src="/templates/default/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script type="text/javascript">
        $(".price-slide").slider({
            animate: true, // Анимация ползунка
            range: "min", // Фон пути ползунка, если это свойство убрать, то синей линии не будет.
            value: 8500, // Значение по умолчанию.
            min: 8500, // Минимальная сумма.
            max: 20000, // Максимальная сумма.
            step: 100, // Шаг диапазона.

            // Вывод диапазона в поле input
            change: function (event, ui) {
                $('#price-bigun').attr('value', ui.value + ' P');
            }

        });
        $(".company-slide").slider({
            animate: true, // Анимация ползунка
            range: "min", // Фон пути ползунка, если это свойство убрать, то синей линии не будет.
            value: 300, // Значение по умолчанию.
            min: 300, // Минимальная сумма.
            max: 1500, // Максимальная сумма.
            step: 100, // Шаг диапазона.

            // Вывод диапазона в поле input
            change: function (event, ui) {
                $('#company-bigun').attr('value', ui.value);
            }

        });
        })
        ;
    </script>
    <script>
        $(document).ready(function () {
            $(document).on('click', function (e) {
                // e.preventDefault();
                me = $(e.target);
                if (me.is('.paymethod label') || me.parent().is('.paymethod label')) {
                    $('.paymethod label').removeClass('checked');
                    me.parent('.paymethod label').addClass('checked');
                }
            });
        });

    </script>

</head>
<body>
<div class="form-back-call">
    <div class="whole-site__close"></div>
    <div class="back-call">
        {CALL}
    </div>
</div>
<div class="wrapper pge2">
    <div id="fullpage">
        <div class="icon-menu-left click-menu">
            <span></span>
            <span></span>
            <span></span>
        </div>


        <div class="left-menu">
            <ul>
                {MENU}</ul>
        </div>


        <script type="text/javascript">
            //функция боковое меню
            $('.click-menu').click(function () {
                if ($('.left-menu').hasClass('open')) {
                    $('.left-menu').css({'left': '-600px'});
                    $('.left-menu').removeClass('open');
                } else {
                    $('.left-menu').css({'left': '0px'});
                    $('.left-menu').addClass('open');
                }
            });
        </script>
        <div class="logo">
            <a href="/"><img src="/templates/default/img/logo 01.png"
                             onMouseOver="this.src='/templates/default/img/logo.gif'"
                             onMouseOut="this.src='/templates/default/img/logo 01.png'"></a>
        </div>
        <div class="sales_img">
            <p>Скидка<br>1,05%</p>
            <a href="#"><img src="/templates/default/img/discount icon.png" alt=""></a>
        </div>
        <div class="contancts-ei">
            <p>+7 800 34 34 55</p>
            <a href="#">Звонок с сайта</a><br>
            <span class="click-back-call">Обратный звонок</span>
        </div>
        <div class="pge-col5" id="section0">
            <div class="intro">
                <div class="intro_title"></div>
            </div>
            <div class="pre-t-inner">
                <div>{MAIN}</div>
                <div>{FAQ}</div>
                <div class="form-req-inner"><ul>{MAIL}</ul></div>
            </div>
        </div>


    </div>

    <div class="menu-slider-inner">
        <ul>
            <li class="item-01 item-01-show"><a href="#">Холодные звонки</a></li>
            <li class="item-02 item-02-show"><a href="#">Входящие звонки</a></li>
            <li class="item-03 item-03-show"><a href="#">База компаний</a></li>
        </ul>
    </div>
</div>
<div class="window-main item-02-show">
    <div class="window">
        <div class="block-01">
            <div class="menulink"><a href="#">Входящие звонки</a></div>
            <div class="call-bl">
                <span>горячая линия</span>
            </div>
            <div class="text-line">
                <p> Услуга организации современной технологичной горячей линии. Любые объемы входящих звонков.</p>
            </div>
        </div>
        <div class="form-main-request form-main-request2">
            <input type="text" placeholder="Имя" class="form-request-first">
            <input type="text" placeholder="Телефон">
            <input type="text" placeholder="E-mail">
            <input type="submit" value="Заказать" class="button_request">
        </div>
    </div>
</div>
<div class="window-main item-03-show">
    <div class="window">
        <div class="search-form"><span></span><input type="text" placeholder="Поиск города"></div>
        <div class="block-01">
            <div class="menulink menulink2"><a href="#">База компаний</a></div>
            <div class="call-bl"><span>cкачать базу</span></div>
            <div class="block-abriv">
                <div class="abriv-all">
                    <ul>
                        <li>Компаний</li>
                        <li>123 490</li>
                    </ul>
                    <span></span>
                </div>
                <div class="abriv-all">
                    <ul>
                        <li>Скидка</li>
                        <li>30%</li>
                    </ul>
                    <span></span>
                </div>
                <div class="abriv-all">
                    <ul>
                        <li>Цена</li>
                        <li>13 450 Р</li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="contacts-main">
                <div class="left">
                    <ul>
                        <li>
                            <div class="left">Телефон</div>
                            <div class="right">
                                <input type="checkbox" id="panels_sel_all" name="cc"/>
                                <label for="panels_sel_all"><span></span></label>
                            </div>
                        </li>
                        <li>
                            <div class="left">E-mail</div>
                            <div class="right">
                                <input type="checkbox" id="i1" name="cc"/>
                                <label for="i1"><span></span></label>
                            </div>
                        </li>
                        <li>
                            <div class="left">Сайт</div>
                            <div class="right">
                                <input type="checkbox" id="i2" name="cc"/>
                                <label for="i2"><span></span></label>
                            </div>
                        </li>
                        <li>
                            <div class="left">Адрес</div>
                            <div class="right">
                                <input type="checkbox" id="i3" name="cc"/>
                                <label for="i3"><span></span></label>
                            </div>
                        </li>
                        <li>
                            <div class="left">Любые из выбранных</div>
                            <div class="right">
                                <input type="checkbox" id="i4" name="cc"/>
                                <label for="i4"><span></span></label>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="right">
                    <div class="money-coment">50 копеек за компанию</div>
                    <div class="all-select">Строго все выбранные</div>
                </div>
            </div>
        </div>
        <div class="scroll-panel-main scroll-panel-main2">
            <div class="scroll-panel2">
                <div>
                    <ul class="search-map">
                        <li class="opene_li">
									<span>
										<input type="checkbox" id="f1" name="cc" class="all-city"/>
										<label for="f1"><span></span></label>
									</span>

                            <p>Все города</p>
                            <ul class="ul-submenu-bordernone">
                                <li>
											<span>
												<input type="checkbox" id="g9" name="cc" class="check-all-city"/>
												<label for="g9"><span></span></label>
											</span>

                                    <p>title 1</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="g10" name="cc" class="check-all-city"/>
												<label for="g10"><span></span></label>
											</span>

                                    <p>title 2</p>
                                </li>
                            </ul>
                        </li>
                        <li class="opene_li">
									<span>
										<input type="checkbox" id="f2" name="cc" class="all-categories"/>
										<label for="f2"><span></span></label>
									</span>

                            <p>Все рубрики</p>
                            <ul>
                                <li class="point_check submenu2">
											<span>
												<input type="checkbox" id="f3" name="cc"
                                                       class="check-all-submenu check-all-categories"/>
												<label for="f3"><span></span></label>
											</span>
                                    <a href="#">Аварийные / справочные / экстренные службы</a>
                                    <ul class="submenu-check ul-submenu-bordernone">
                                        <li>
												<span>
													<input type="checkbox" id="f4" name="cc"
                                                           class="check-all-categories"/>
													<label for="f4"><span></span></label>
												</span>
                                            <a href="#">Аварийные службы</a></li>
                                        <li>
												<span>
													<input type="checkbox" id="f5" name="cc"
                                                           class="check-all-categories"/>
													<label for="f5"><span></span></label>
												</span>
                                            <a href="#">Аварийные службы</a></li>
                                        <li>
												<span>
													<input type="checkbox" id="f6" name="cc"
                                                           class="check-all-categories"/>
													<label for="f6"><span></span></label>
												</span>
                                            <a href="#">Аварийные службы</a></li>
                                    </ul>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f7" name="cc" class="check-all-categories"/>
												<label for="f7"><span></span></label>
											</span>

                                    <p>АвтоОбразование / Работа / Карьера</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f10" name="cc" class="check-all-categories"/>
												<label for="f10"><span></span></label>
											</span>

                                    <p>Автосервис / Автотовары</p>
                                </li>
                                <li class="point_check">
											<span>
												<input type="checkbox" id="f8" name="cc" class="check-all-categories"/>
												<label for="f8"><span></span></label>
											</span>

                                    <p>Досуг / Развлечения / Общественное питание</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f9" name="cc" class="check-all-categories"/>
												<label for="f9"><span></span></label>
											</span>

                                    <p>Компьютеры / Бытовая техника / Офисная техника</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f15" name="cc" class="check-all-categories"/>
												<label for="f15"><span></span></label>
											</span>

                                    <p>Корпусная мебель</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f11" name="cc" class="check-all-categories"/>
												<label for="f11"><span></span></label>
											</span>

                                    <p>Мебель / Материалы / Фурнитура</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f12" name="cc" class="check-all-categories"/>
												<label for="f12"><span></span></label>
											</span>

                                    <p>Реклама / Полиграфия / СМИ</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f13" name="cc" class="check-all-categories"/>
												<label for="f13"><span></span></label>
											</span>

                                    <p>Строительные / отделочные материалы</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="f14" name="cc" class="check-all-categories"/>
												<label for="f14"><span></span></label>
											</span>

                                    <p>Текстиль / Предметы интерьера</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="block-download">
        <div class="download-file">
            <a href="#" class="download_button">Скачать</a>

            <div>Перед формированием выгрузки<br>вы можете <a href="#">скачать</a> пример базы</div>
        </div>
    </div>
</div>
<div class="window-main item-01-show">
    <div class="window">
        <div class="block-01">
            <div class="menulink"><a href="#">Холодные звонки</a></div>
            <div class="call-bl">
                <span>обзвон по базе клиентов</span>
            </div>
            <div class="price-company">
                <span class="left">Цена</span><span class="right">Компаний</span>

                <div class="clearfix"></div>
                <div class="input-all">
                    <div class="price">
                        <div class="price-slide slide-all-nr"></div>
                        <input type="text" value="8500 P" id="price-bigun">
                    </div>
                    <div class="company">
                        <div class="company-slide slide-all-nr"></div>
                        <input type="text" value="300" id="company-bigun">
                    </div>
                </div>
            </div>
        </div>
        <div class="scroll-panel-main scroll-panel-main1">
            <div class="scroll-panel">
                <div>
                    <ul class="search-map">
                        <li class="opene_li">
									<span>
										<input type="checkbox" id="s1" name="cc" class="all-city"/>
										<label for="s1"><span></span></label>
									</span>

                            <p>Все города</p>
                            <ul class="ul-submenu-bordernone">
                                <li>
											<span>
												<input type="checkbox" id="g1" name="cc" class="check-all-city"/>
												<label for="g1"><span></span></label>
											</span>

                                    <p>title 1</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="g2" name="cc" class="check-all-city"/>
												<label for="g2"><span></span></label>
											</span>

                                    <p>title 2</p>
                                </li>
                            </ul>
                        </li>
                        <li class="opene_li">
									<span>
										<input type="checkbox" id="s2" name="cc" class="all-categories"/>
										<label for="s2"><span></span></label>
									</span>

                            <p>Все рубрики</p>
                            <ul>
                                <li class="point_check submenu2">
											<span>
												<input type="checkbox" id="s3" name="cc"
                                                       class="check-all-submenu check-all-categories"/>
												<label for="s3"><span></span></label>
											</span>
                                    <a href="#">Аварийные / справочные / экстренные службы</a>
                                    <ul class="submenu-check ul-submenu-bordernone">
                                        <li>
												<span>
													<input type="checkbox" id="s4" name="cc"
                                                           class="check-all-categories"/>
													<label for="s4"><span></span></label>
												</span>
                                            <a href="#">Аварийные службы</a></li>
                                        <li>
												<span>
													<input type="checkbox" id="s5" name="cc"
                                                           class="check-all-categories"/>
													<label for="s5"><span></span></label>
												</span>
                                            <a href="#">Аварийные службы</a></li>
                                        <li>
												<span>
													<input type="checkbox" id="s6" name="cc"
                                                           class="check-all-categories"/>
													<label for="s6"><span></span></label>
												</span>
                                            <a href="#">Аварийные службы</a></li>
                                    </ul>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s7" name="cc" class="check-all-categories"/>
												<label for="s7"><span></span></label>
											</span>

                                    <p>АвтоОбразование / Работа / Карьера</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s10" name="cc" class="check-all-categories"/>
												<label for="s10"><span></span></label>
											</span>

                                    <p>Автосервис / Автотовары</p>
                                </li>
                                <li class="point_check">
											<span>
												<input type="checkbox" id="s8" name="cc" class="check-all-categories"/>
												<label for="s8"><span></span></label>
											</span>

                                    <p>Досуг / Развлечения / Общественное питание</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s9" name="cc" class="check-all-categories"/>
												<label for="s9"><span></span></label>
											</span>

                                    <p>Компьютеры / Бытовая техника / Офисная техника</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s15" name="cc" class="check-all-categories"/>
												<label for="s15"><span></span></label>
											</span>

                                    <p>Корпусная мебель</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s11" name="cc" class="check-all-categories"/>
												<label for="s11"><span></span></label>
											</span>

                                    <p>Мебель / Материалы / Фурнитура</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s12" name="cc" class="check-all-categories"/>
												<label for="s12"><span></span></label>
											</span>

                                    <p>Реклама / Полиграфия / СМИ</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s13" name="cc" class="check-all-categories"/>
												<label for="s13"><span></span></label>
											</span>

                                    <p>Строительные / отделочные материалы</p>
                                </li>
                                <li>
											<span>
												<input type="checkbox" id="s14" name="cc" class="check-all-categories"/>
												<label for="s14"><span></span></label>
											</span>

                                    <p>Текстиль / Предметы интерьера</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="form-main-request">
            <input type="text" placeholder="Имя" class="form-request-first">
            <input type="text" placeholder="Телефон">
            <input type="text" placeholder="E-mail">
            <input type="submit" value="Заказать" class="button_request">
        </div>
    </div>
</div>

<script src="/templates/default/js/jquery.mousewheel.js"></script>
<script src="/templates/default/js/jquery.jscrollpane.min.js"></script>
<script src="/templates/default/js/main.js"></script>
<script src="/templates/default/js/mod/common.js"></script>
<script src="/templates/default/js/mod/jquery.jcarousel.min.js"></script>

</body>
</html>