.class Lcom/amap/api/mapcore/util/q5$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/q5;->e(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/mapcore/util/q5;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/q5;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/q5$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/amap/api/mapcore/util/q5$a;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q5$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w5;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3
    iget v2, p0, Lcom/amap/api/mapcore/util/q5$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/q5;->a(Lcom/amap/api/mapcore/util/q5;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/q5;->f(Lcom/amap/api/mapcore/util/q5;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/q5;->a(Lcom/amap/api/mapcore/util/q5;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/q5;->f(Lcom/amap/api/mapcore/util/q5;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :cond_1
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore/util/q5$a;->b:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/q5;->a(Lcom/amap/api/mapcore/util/q5;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/q5;->f(Lcom/amap/api/mapcore/util/q5;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/s5;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget v2, p0, Lcom/amap/api/mapcore/util/q5$a;->b:I

    and-int/lit16 v2, v2, 0x100

    if-lez v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/q5;->a(Lcom/amap/api/mapcore/util/q5;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amap/api/mapcore/util/q5;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/amap/api/mapcore/util/q5$a;->c:Lcom/amap/api/mapcore/util/q5;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/q5;->f(Lcom/amap/api/mapcore/util/q5;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    .line 12
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_1
    return-void
.end method
