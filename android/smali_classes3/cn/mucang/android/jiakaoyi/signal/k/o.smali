.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/k/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/o;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/o;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/o;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/o;->b:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->u(Z)V

    return-void
.end method
