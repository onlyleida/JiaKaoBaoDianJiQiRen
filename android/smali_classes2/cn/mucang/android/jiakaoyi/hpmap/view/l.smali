.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/view/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/l;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/l;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/l;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/l;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/l;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/l;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method
