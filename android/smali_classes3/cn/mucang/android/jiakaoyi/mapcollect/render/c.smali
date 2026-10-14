.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/render/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/render/g;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/c;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->j(Lcn/mucang/android/jiakaoyi/mapcollect/render/g;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Ljava/util/List;)V

    return-void
.end method
