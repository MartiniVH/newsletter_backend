import { Module } from '@nestjs/common';
import { NewsArticleController } from 'src/controllers/newsarticles.controller';
import { NewsArticleService } from 'src/services/newsarticles.service';

@Module({
  imports: [],
  controllers: [NewsArticleController],
  providers: [NewsArticleService],
})
export class NewsArticleModule {}
