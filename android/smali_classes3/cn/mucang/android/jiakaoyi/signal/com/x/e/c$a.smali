.class Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$a;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/s;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$a;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->b(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;)Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method
