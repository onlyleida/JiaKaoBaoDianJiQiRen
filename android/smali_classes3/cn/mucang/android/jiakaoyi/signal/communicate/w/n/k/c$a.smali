.class Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->k()Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;Z)Z

    return-void
.end method

.method public synthetic b()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/b;->a(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;)Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiHeartBeat:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "AI"

    return-object v0
.end method
