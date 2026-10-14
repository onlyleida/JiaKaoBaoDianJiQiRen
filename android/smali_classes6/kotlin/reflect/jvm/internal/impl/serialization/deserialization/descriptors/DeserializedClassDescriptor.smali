.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors;
    }
.end annotation


# instance fields
.field private final f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

.field private final g:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

.field private final h:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

.field private final i:Lkotlin/reflect/jvm/internal/impl/name/b;

.field private final j:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private final k:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field private final l:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

.field private final m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

.field private final n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/f;

.field private final o:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

.field private final p:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass<",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors;

.field private final r:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

.field private final s:Lkotlin/reflect/jvm/internal/impl/storage/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/i<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lkotlin/reflect/jvm/internal/impl/storage/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/h<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Lkotlin/reflect/jvm/internal/impl/storage/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/i<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lkotlin/reflect/jvm/internal/impl/storage/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/h<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final w:Lkotlin/reflect/jvm/internal/impl/storage/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/i<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v<",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            ">;>;"
        }
    .end annotation
.end field

.field private final x:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

.field private final y:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V
    .locals 8

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classProto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFqName()I

    move-result v1

    invoke-static {p3, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;->a(Lkotlin/reflect/jvm/internal/impl/metadata/c/c;I)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/b;->j()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/name/f;)V

    .line 4
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 5
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    .line 6
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    .line 7
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFqName()I

    move-result v0

    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;->a(Lkotlin/reflect/jvm/internal/impl/metadata/c/c;I)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/name/b;

    .line 8
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->e:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->b(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 9
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->d:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 10
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->f:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 11
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeParameterList()Ljava/util/List;

    move-result-object v3

    const-string v1, "classProto.typeParameterList"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/metadata/c/g;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v1

    const-string v2, "classProto.typeTable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/g;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    .line 12
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/c/i;->b:Lkotlin/reflect/jvm/internal/impl/metadata/c/i$a;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getVersionRequirementTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v2

    const-string v4, "classProto.versionRequirementTable"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/c/i$a;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/c/i;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v4, p3

    move-object v7, p4

    .line 13
    invoke-virtual/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/c/g;Lkotlin/reflect/jvm/internal/impl/metadata/c/i;Lkotlin/reflect/jvm/internal/impl/metadata/c/a;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object p3

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    .line 14
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne v0, p4, :cond_0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;

    :goto_0
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/f;

    .line 15
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    .line 16
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass$a;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v2

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->c()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;->m()Lkotlin/reflect/jvm/internal/impl/types/checker/k;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/k;->c()Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    move-result-object v3

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$memberScopeHolder$1;

    invoke-direct {v4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$memberScopeHolder$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/types/checker/g;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    const/4 v1, 0x0

    if-ne v0, p4, :cond_1

    .line 17
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors;

    invoke-direct {p4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    goto :goto_1

    :cond_1
    move-object p4, v1

    :goto_1
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->q:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors;

    .line 18
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->r:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 19
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object p4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$primaryConstructor$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$primaryConstructor$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/storage/m;->e(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/i;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->s:Lkotlin/reflect/jvm/internal/impl/storage/i;

    .line 20
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object p4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$constructors$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$constructors$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/storage/m;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/h;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->t:Lkotlin/reflect/jvm/internal/impl/storage/h;

    .line 21
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object p4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$companionObjectDescriptor$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$companionObjectDescriptor$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/storage/m;->e(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/i;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->u:Lkotlin/reflect/jvm/internal/impl/storage/i;

    .line 22
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object p4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$sealedSubclasses$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$sealedSubclasses$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/storage/m;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/h;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->v:Lkotlin/reflect/jvm/internal/impl/storage/h;

    .line 23
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object p4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$inlineClassRepresentation$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$inlineClassRepresentation$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/storage/m;->e(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/i;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->w:Lkotlin/reflect/jvm/internal/impl/storage/i;

    .line 24
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

    .line 25
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->g()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    move-result-object v4

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->j()Lkotlin/reflect/jvm/internal/impl/metadata/c/g;

    move-result-object v5

    .line 26
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->x:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

    :goto_3
    move-object v7, v1

    move-object v2, p4

    move-object v3, p2

    move-object v6, p5

    .line 27
    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/c/g;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;)V

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->x:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

    .line 28
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 29
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    goto :goto_4

    .line 30
    :cond_4
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object p2

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$annotations$1;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$annotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/jvm/b/a;)V

    .line 31
    :goto_4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->y:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-void
.end method

.method public static final synthetic G0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->O0()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic H0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->P0()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic I0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/v;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->Q0()Lkotlin/reflect/jvm/internal/impl/descriptors/v;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic J0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->R0()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic K0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->T0()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic L0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/name/b;

    return-object p0
.end method

.method public static final synthetic M0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->q:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors;

    return-object p0
.end method

.method public static final synthetic N0(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    return-object p0
.end method

.method private final O0()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasCompanionObjectName()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->g()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    move-result-object v0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getCompanionObjectName()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;->b(Lkotlin/reflect/jvm/internal/impl/metadata/c/c;I)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->W0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-virtual {v2, v0, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;->f(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    :cond_1
    return-object v1
.end method

.method private final P0()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->S0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->n(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/s;->x0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->c()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/a1/a;

    move-result-object v1

    invoke-interface {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a1/a;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lkotlin/collections/s;->x0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final Q0()Lkotlin/reflect/jvm/internal/impl/descriptors/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v<",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasInlineClassUnderlyingPropertyName()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->g()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    move-result-object v0

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getInlineClassUnderlyingPropertyName()I

    move-result v3

    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;->b(Lkotlin/reflect/jvm/internal/impl/metadata/c/c;I)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/c/a;->c(III)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v0

    const-string v3, "constructor.valueParameters"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/v0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v0

    const-string v3, "{\n                // Bef\u2026irst().name\n            }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->j()Lkotlin/reflect/jvm/internal/impl/metadata/c/g;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/c/f;->f(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/c/g;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v3, v4, v6, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->o(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_9

    .line 8
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->W0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;

    move-result-object v3

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-virtual {v3, v0, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;->c(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Collection;

    move-result-object v3

    .line 9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v6, v1

    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 10
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    .line 11
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->O()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_3

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v6, v7

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v6

    :goto_4
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    if-eqz v1, :cond_8

    .line 12
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/u0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/f0;

    goto :goto_5

    :cond_8
    const-string v0, "Inline class has no underlying property: "

    .line 13
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_9
    :goto_5
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/v;

    invoke-direct {v1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/types/model/h;)V

    return-object v1

    :cond_a
    const-string v0, "Inline class has no primary constructor: "

    .line 15
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string v0, "Inline class has no underlying property name in metadata: "

    .line 16
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final R0()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/o0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->n()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c1(Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getConstructorList()Ljava/util/List;

    move-result-object v0

    const-string v1, "classProto.constructorList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 6
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->m:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getFlags()I

    move-result v4

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    if-nez v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->U0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->m(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method private final S0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getConstructorList()Ljava/util/List;

    move-result-object v0

    const-string v1, "classProto.constructorList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 4
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->m:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getFlags()I

    move-result v3

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "IS_SECONDARY.get(it.flags)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->U0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->m(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private final T0()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSealedSubclassFqNameList()Ljava/util/List;

    move-result-object v0

    const-string v1, "fqNames"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->U0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->c()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->U0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->g()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    move-result-object v4

    const-string v5, "index"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;->a(Lkotlin/reflect/jvm/internal/impl/metadata/c/c;I)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;->b(Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    .line 9
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private final W0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->c()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;->m()Lkotlin/reflect/jvm/internal/impl/types/checker/k;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/k;->c()Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->c(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;

    return-object v0
.end method


# virtual methods
.method public C()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->s:Lkotlin/reflect/jvm/internal/impl/storage/i;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    return-object v0
.end method

.method public D0()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->h:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_DATA.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final U0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    return-object v0
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final V0()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object v0
.end method

.method public final X0()Lkotlin/reflect/jvm/internal/impl/metadata/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    return-object v0
.end method

.method public Y()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->f:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;->d(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/f;

    return-object v0
.end method

.method public final Z0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->x:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

    return-object v0
.end method

.method public final a1(Lkotlin/reflect/jvm/internal/impl/name/f;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->W0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->r()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->r:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public b0()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->l:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_FUN_INTERFACE.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected e0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->c(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    return-object p1
.end method

.method public g()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object v0
.end method

.method public g0()Z
    .locals 4

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->k:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INLINE_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/c/a;->c(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->y:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    return-object v0
.end method

.method public i()Lkotlin/reflect/jvm/internal/impl/types/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    return-object v0
.end method

.method public i0()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->j:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXPECT_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isExternal()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->i:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXTERNAL_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 3

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->k:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INLINE_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/a;->e(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->t:Lkotlin/reflect/jvm/internal/impl/storage/h;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public bridge synthetic k0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->Y0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/f;

    move-result-object v0

    return-object v0
.end method

.method public l0()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->u:Lkotlin/reflect/jvm/internal/impl/storage/i;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v0
.end method

.method public o()Lkotlin/reflect/jvm/internal/impl/descriptors/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public q()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object v0
.end method

.method public t()Lkotlin/reflect/jvm/internal/impl/descriptors/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v<",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->w:Lkotlin/reflect/jvm/internal/impl/storage/i;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deserialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->i0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->v:Lkotlin/reflect/jvm/internal/impl/storage/h;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public z()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/c/b;->g:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;->g(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INNER.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
