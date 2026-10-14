.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->u(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;)V

    return-void
.end method
