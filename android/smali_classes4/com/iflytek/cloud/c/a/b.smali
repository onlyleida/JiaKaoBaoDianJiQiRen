.class public Lcom/iflytek/cloud/c/a/b;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/cloud/msc/util/i;

.field private e:Lcom/iflytek/cloud/RequestListener;

.field f:Lcom/iflytek/cloud/msc/util/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/d;-><init>()V

    const-string v0, "http://openapi.openspeech.cn/webapi/wfr.do"

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/b;->a:Ljava/lang/String;

    const-string v0, "pver=1.0"

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/b;->c:Landroid/content/Context;

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    .line 6
    new-instance v0, Lcom/iflytek/cloud/c/a/b$a;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/c/a/b$a;-><init>(Lcom/iflytek/cloud/c/a/b;)V

    iput-object v0, p0, Lcom/iflytek/cloud/c/a/b;->f:Lcom/iflytek/cloud/msc/util/i$a;

    .line 7
    iput-object p2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    .line 8
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/b;->c:Landroid/content/Context;

    .line 9
    new-instance p1, Lcom/iflytek/cloud/msc/util/i;

    invoke-direct {p1}, Lcom/iflytek/cloud/msc/util/i;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/b;)Lcom/iflytek/cloud/RequestListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/b;->e:Lcom/iflytek/cloud/RequestListener;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/util/i;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    return-void
.end method

.method public destroy()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/d;->destroy()Z

    move-result v0

    return v0
.end method

.method public sendRequest([BLcom/iflytek/cloud/RequestListener;)I
    .locals 5

    .line 1
    :try_start_0
    iput-object p2, p0, Lcom/iflytek/cloud/c/a/b;->e:Lcom/iflytek/cloud/RequestListener;

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object p2

    if-nez p2, :cond_0

    const/16 p1, 0x277f

    return p1

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v0, "server_url"

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/b;->a:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/b/c;->d(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v3, "timeout"

    const/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/msc/util/i;->b(I)V

    .line 8
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/msc/util/i;->a(I)V

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    iget-object v2, p0, Lcom/iflytek/cloud/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, p1, v0}, Lcom/iflytek/cloud/msc/util/i;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/b;->d:Lcom/iflytek/cloud/msc/util/i;

    iget-object p2, p0, Lcom/iflytek/cloud/c/a/b;->f:Lcom/iflytek/cloud/msc/util/i$a;

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/msc/util/i;->a(Lcom/iflytek/cloud/msc/util/i$a;)V

    const-string p1, "LastDataFlag"

    const/4 p2, 0x0

    .line 11
    invoke-static {p1, p2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const/16 p1, 0x5207

    return p1
.end method
