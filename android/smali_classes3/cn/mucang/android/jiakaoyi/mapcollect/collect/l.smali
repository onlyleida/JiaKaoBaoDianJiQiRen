.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method
