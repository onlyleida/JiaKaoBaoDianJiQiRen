.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->k0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;)V

    return-void
.end method
