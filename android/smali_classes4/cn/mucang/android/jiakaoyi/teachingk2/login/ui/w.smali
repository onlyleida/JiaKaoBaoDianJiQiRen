.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/w;->b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/w;->b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method
