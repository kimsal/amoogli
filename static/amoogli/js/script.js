/*menu toggle*/
$(document).ready(function () {
				"use strict";
				var myNav = {
					init: function () {
						this.cacheDOM();
						this.browserWidth();
						this.bindEvents();
					},
					cacheDOM: function () {
						this.navBars = $(".navBars");
						this.toggle = $("#toggle");
						this.navMenu = $("#menu");
					},
					browserWidth: function () {
						$(window).resize(this.bindEvents.bind(this));
					},
					bindEvents: function () {
						var width = window.innerWidth;

						if (width < 600) {
							this.navBars.click(this.animate.bind(this));
							this.navMenu.hide();
							this.toggle[0].checked = false;
						} else {
							this.resetNav();
						}
					},
					animate: function (e) {
						var checkbox = this.toggle[0];

						if (!checkbox.checked) {
							this.navMenu.slideDown();
						} else {
							this.navMenu.slideUp();
						}

					},
					resetNav: function () {
						this.navMenu.show();
					}
				};
				myNav.init();
			});
/*end menu toggle*/