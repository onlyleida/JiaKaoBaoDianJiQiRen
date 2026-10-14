.class final Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$closeListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->m(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $privacyAgreementDialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$closeListener$1;->$privacyAgreementDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$closeListener$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->c()Lcn/mucang/jiakaoyi/uilib/login/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$closeListener$1;->$privacyAgreementDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->r()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->c()Lcn/mucang/jiakaoyi/uilib/login/m;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/login/m;->b()V

    :goto_0
    return-void
.end method
