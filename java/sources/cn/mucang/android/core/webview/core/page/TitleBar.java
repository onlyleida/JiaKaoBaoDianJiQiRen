package cn.mucang.android.core.webview.core.page;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class TitleBar implements Serializable {
    private Back back;
    private String background;
    private int height;
    private Title title;

    class Back implements Serializable {
        private String color;
        private String text;

        Back() {
        }

        public String getColor() {
            return this.color;
        }

        public String getText() {
            return this.text;
        }

        public void setColor(String str) {
            this.color = str;
        }

        public void setText(String str) {
            this.text = str;
        }
    }

    class Title implements Serializable {
        private String color;
        private String text;

        Title() {
        }

        public String getColor() {
            return this.color;
        }

        public String getText() {
            return this.text;
        }

        public void setColor(String str) {
            this.color = str;
        }

        public void setText(String str) {
            this.text = str;
        }
    }

    public Back getBack() {
        return this.back;
    }

    public String getBackground() {
        return this.background;
    }

    public int getHeight() {
        return this.height;
    }

    public Title getTitle() {
        return this.title;
    }

    public void setBack(Back back) {
        this.back = back;
    }

    public void setBackground(String str) {
        this.background = str;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setTitle(Title title) {
        this.title = title;
    }
}
