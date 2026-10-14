.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->l(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V

    return-void
.end method
