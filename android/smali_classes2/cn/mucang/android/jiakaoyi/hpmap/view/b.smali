.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->G(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method
