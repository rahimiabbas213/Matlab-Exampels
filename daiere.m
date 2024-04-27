% تعیین ابعاد تصویر
rows = 200; % تعداد ردیف‌ها
cols = 200; % تعداد ستون‌ها

% ایجاد تصویر خالی
image = zeros(rows, cols);

% مشخص کردن مرکز دایره و شعاع
center_x = 100;
center_y = 100;
radius = 50;

% رسم خط دایره‌ای
theta = linspace(0, 2*pi, 100); % زاویه‌ها
x = center_x + radius * cos(theta); % مختصات x نقاط دایره
y = center_y + radius * sin(theta); % مختصات y نقاط دایره

% تعیین پیکسل‌های داخل دایره
for i = 1:length(x)
    x_val = round(x(i)); % گرد کردن مختصات x به عدد صحیح
    y_val = round(y(i)); % گرد کردن مختصات y به عدد صحیح
    image(x_val, y_val) = 1; % روشن کردن پیکسل
end

% نمایش تصویر
imshow(image);
