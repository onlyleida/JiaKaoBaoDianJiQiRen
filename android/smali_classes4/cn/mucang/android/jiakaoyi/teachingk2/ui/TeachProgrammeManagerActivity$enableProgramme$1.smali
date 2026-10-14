.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.teachingk2.ui.TeachProgrammeManagerActivity"
    f = "TeachProgrammeManagerActivity.kt"
    l = {
        0x110
    }
    m = "enableProgramme"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->label:I

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
