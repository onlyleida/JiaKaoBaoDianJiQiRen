.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/k/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/a0;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/a0;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/a0;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/a0;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->p(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    return-void
.end method
