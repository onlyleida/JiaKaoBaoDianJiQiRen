.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/k/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/f0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/b0;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/b0;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->n(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method
