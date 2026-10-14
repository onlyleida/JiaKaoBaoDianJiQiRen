.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/k;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/k;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V

    return-void
.end method
