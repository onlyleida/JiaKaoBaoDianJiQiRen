.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;->b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;->b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->N(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method
