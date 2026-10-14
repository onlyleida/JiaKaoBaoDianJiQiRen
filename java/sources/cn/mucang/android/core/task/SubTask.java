package cn.mucang.android.core.task;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
abstract class SubTask implements Serializable {

    static class DownloadSubTask extends SubTask implements Serializable {
        private String md5;
        private long subTaskId;
        private String url;

        DownloadSubTask() {
        }

        public String getMd5() {
            return this.md5;
        }

        public long getSubTaskId() {
            return this.subTaskId;
        }

        public String getUrl() {
            return this.url;
        }

        public void setMd5(String str) {
            this.md5 = str;
        }

        public void setSubTaskId(long j) {
            this.subTaskId = j;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    SubTask() {
    }
}
