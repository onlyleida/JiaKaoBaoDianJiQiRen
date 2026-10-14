.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/t;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/t;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->K(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method
