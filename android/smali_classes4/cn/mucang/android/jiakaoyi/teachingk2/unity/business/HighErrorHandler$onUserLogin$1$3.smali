.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;"
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
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1$3;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1$3;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1$3;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getReverse()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1$3;->invoke(Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
