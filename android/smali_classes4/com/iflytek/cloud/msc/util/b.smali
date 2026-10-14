.class public Lcom/iflytek/cloud/msc/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/iflytek/cloud/msc/util/b;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->c:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lcom/iflytek/cloud/msc/util/b;->c:Landroid/content/Context;

    const-string v0, "com.iflytek.msc"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/b;->a:Lcom/iflytek/cloud/msc/util/b;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/b;->b(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;

    .line 3
    :cond_0
    sget-object p0, Lcom/iflytek/cloud/msc/util/b;->a:Lcom/iflytek/cloud/msc/util/b;

    return-object p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;
    .locals 2

    const-class v0, Lcom/iflytek/cloud/msc/util/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/msc/util/b;->a:Lcom/iflytek/cloud/msc/util/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/iflytek/cloud/msc/util/b;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/msc/util/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/iflytek/cloud/msc/util/b;->a:Lcom/iflytek/cloud/msc/util/b;

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/FileUtil;->getUserPath(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->b(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    .line 5
    sget-object p0, Lcom/iflytek/cloud/msc/util/b;->a:Lcom/iflytek/cloud/msc/util/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove data from preference has exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 13
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
