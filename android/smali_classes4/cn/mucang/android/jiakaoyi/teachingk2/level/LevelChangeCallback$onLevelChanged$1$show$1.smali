.class final Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->c(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Landroid/view/View;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u5173\u5361-\u6d6e\u7a97\u53d6\u6d88"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
