.class final Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->s(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/util/SparseArray;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
        "it",
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


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "userDataArray[it]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/util/SparseArray;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;->invoke(I)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method
