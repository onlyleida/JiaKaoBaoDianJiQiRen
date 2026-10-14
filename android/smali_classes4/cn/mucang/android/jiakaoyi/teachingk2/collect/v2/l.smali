.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    return-void
.end method
