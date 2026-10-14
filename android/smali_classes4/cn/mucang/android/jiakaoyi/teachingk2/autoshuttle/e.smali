.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field public final synthetic c:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/b/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;->c:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;->c:Lkotlin/jvm/b/l;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/b/l;)V

    return-void
.end method
