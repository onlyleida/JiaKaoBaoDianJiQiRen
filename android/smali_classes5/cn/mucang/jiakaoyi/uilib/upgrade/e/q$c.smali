.class final Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->v(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

.field final synthetic d:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic e:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->c:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->e:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u4e0b\u8f7d\u66f4\u65b0\u5931\u8d25"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUpgrade "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  ; "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ; "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_0

    .line 4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUpgrade "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->c:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/e/b;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {p1, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->c(Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u51fa\u9519"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u6587\u4ef6\u6709\u95ee\u9898 md5 \u51fa\u73b0\u95ee\u9898 ,\u670d\u52a1\u5668md5="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\u8ba1\u7b97md5="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_2

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
