.class Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->msg:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->a(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)Z

    move-result v6

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    iget v8, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->msg:I

    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->e(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;I)Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-static {v0, v1, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;IZZLjava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230ai\u5347\u7ea7\u72b6\u6001\u54cd\u5e94:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->msg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)Z

    move-result v1

    if-nez v1, :cond_2

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->msg:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;Z)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;->a(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;)V

    return-void
.end method
