.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->a:Ljava/lang/Boolean;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->B(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method
