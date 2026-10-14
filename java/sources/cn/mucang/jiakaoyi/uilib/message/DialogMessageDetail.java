package cn.mucang.jiakaoyi.uilib.message;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class DialogMessageDetail implements Serializable {
    private DialogConfig config;
    private String content;
    private String messageId;
    private int priority;
    private String title;

    public DialogMessageDetail() {
    }

    public DialogConfig getConfig() {
        return this.config;
    }

    public String getContent() {
        return this.content;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getTitle() {
        return this.title;
    }

    public void setConfig(DialogConfig dialogConfig) {
        this.config = dialogConfig;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setMessageId(String str) {
        this.messageId = str;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public DialogMessageDetail(String str, String str2, String str3, int i, DialogConfig dialogConfig) {
        this.messageId = str;
        this.title = str2;
        this.content = str3;
        this.priority = i;
        this.config = dialogConfig;
    }
}
