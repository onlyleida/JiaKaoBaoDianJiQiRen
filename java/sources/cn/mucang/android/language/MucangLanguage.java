package cn.mucang.android.language;

/* JADX INFO: loaded from: classes4.dex */
public enum MucangLanguage {
    UG("ug", "CN");

    private String country;
    private String language;

    MucangLanguage(String str, String str2) {
        this.language = str;
        this.country = str2;
    }

    public String getCountry() {
        return this.country;
    }

    public String getLanguage() {
        return this.language;
    }
}
