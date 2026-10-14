.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->n(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    return-void
.end method
