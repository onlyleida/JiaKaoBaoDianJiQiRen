.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# static fields
.field public static final LeftTurn:I = 0x1

.field public static final NoTurn:I = 0x0

.field public static final RightTurn:I = 0x2


# instance fields
.field public headType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/4 v0, 0x7

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;->headType:I

    return-void
.end method
