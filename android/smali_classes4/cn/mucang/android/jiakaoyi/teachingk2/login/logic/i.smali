.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;->b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;->b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    return-void
.end method
