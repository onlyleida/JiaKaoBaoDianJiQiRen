.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/q;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/m;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/m;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->d(Lcn/mucang/android/jiakaoyi/signal/communicate/q;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V

    return-void
.end method
