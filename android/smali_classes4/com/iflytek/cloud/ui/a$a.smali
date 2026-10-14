.class Lcom/iflytek/cloud/ui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/ui/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/iflytek/cloud/ui/a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/ui/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/ui/a$a;->b:Lcom/iflytek/cloud/ui/a;

    iput-object p2, p0, Lcom/iflytek/cloud/ui/a$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/b/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.xunfei.cn/?appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/iflytek/cloud/ui/a$a;->b:Lcom/iflytek/cloud/ui/a;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/ui/a;I)I

    .line 7
    iget-object p1, p0, Lcom/iflytek/cloud/ui/a$a;->b:Lcom/iflytek/cloud/ui/a;

    invoke-static {p1}, Lcom/iflytek/cloud/ui/a;->b(Lcom/iflytek/cloud/ui/a;)V

    .line 8
    iget-object p1, p0, Lcom/iflytek/cloud/ui/a$a;->b:Lcom/iflytek/cloud/ui/a;

    invoke-static {p1}, Lcom/iflytek/cloud/ui/a;->c(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    .line 9
    iget-object p1, p0, Lcom/iflytek/cloud/ui/a$a;->b:Lcom/iflytek/cloud/ui/a;

    invoke-static {p1}, Lcom/iflytek/cloud/ui/a;->d(Lcom/iflytek/cloud/ui/a;)V

    .line 10
    iget-object p1, p0, Lcom/iflytek/cloud/ui/a$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "failed"

    .line 11
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogW(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
