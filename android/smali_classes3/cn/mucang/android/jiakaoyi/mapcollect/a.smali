.class public Lcn/mucang/android/jiakaoyi/mapcollect/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 2

    const-string v0, "examSiteModelKey"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "current_transform_data"

    .line 4
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/a;->a:Ljava/lang/String;

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "transform_map_data"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/a;->a:Ljava/lang/String;

    const-string v1, "current_transform_data"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->copyWithoutMapData()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    const-string v0, "examSiteModelKey"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "transform_map_data"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
