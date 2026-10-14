.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->F(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/Boolean;)V

    return-void
.end method
