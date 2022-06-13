import app from '@system.app';

export default {
  onCreate() {
    app.setImageCacheCount(10)
    console.info('Application onCreate')
  },
  onDestroy() {
    console.info('Application onDestroy')
  },
}