.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BringIntoViewResponder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->bringIntoViewResponder(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewResponder;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBringIntoViewResponder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewResponder.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,313:1\n36#2:314\n1057#3,6:315\n*S KotlinDebug\n*F\n+ 1 BringIntoViewResponder.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2\n*L\n113#1:314\n113#1:315,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;->$responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, -0x32c94b6f

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C111@5086L36,112@5142L85:BringIntoViewResponder.kt#exjx5q"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.relocation.bringIntoViewResponder.<anonymous> (BringIntoViewResponder.kt:110)"

    .line 112
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p2, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;->rememberDefaultBringIntoViewParent(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/relocation/BringIntoViewParent;

    move-result-object p1

    const p3, 0x44faf204

    .line 113
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 314
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    .line 315
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_1

    .line 316
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_2

    .line 114
    :cond_1
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewParent;)V

    .line 318
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 314
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 113
    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 116
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;->$responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->setResponder(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
