.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->u(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method
