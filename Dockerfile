# 使用 ruby:3.2 作为基础镜像
FROM ruby:3.2

# 设置工作目录
WORKDIR /app

# 复制 Gemfile 和 Gemfile.lock 到工作目录
COPY Gemfile Gemfile.lock ./

# 安装 bundler gem
RUN gem install bundler

# 安装项目依赖
RUN bundle install

# 复制项目的其他文件
COPY . .

# 设置容器启动时执行的命令（如果需要运行特定的脚本或命令，可以在这里设置）
# CMD ["ruby", "your_main_script.rb"]
