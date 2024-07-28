import { Module } from '@nestjs/common';
import { NewsArticleModule } from './modules/newsarticles.module';

@Module({
  imports: [NewsArticleModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
