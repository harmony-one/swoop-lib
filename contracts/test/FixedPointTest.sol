// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.5.0;
pragma experimental ABIEncoderV2;

import "../libraries/FixedPoint.sol";

contract FixedPointTest {
    function encode(uint112 x) external pure returns (FixedPoint.uq112x112 memory) {
        return FixedPoint.encode(x);
    }

    function encode144(uint144 x) external pure returns (FixedPoint.uq144x112 memory) {
        return FixedPoint.encode144(x);
    }

    function decode(FixedPoint.uq112x112 calldata self) external pure returns (uint112) {
        return FixedPoint.decode(self);
    }

    function decode144(FixedPoint.uq144x112 calldata self) external pure returns (uint144) {
        return FixedPoint.decode144(self);
    }

    function mul(FixedPoint.uq112x112 calldata self, uint y) external pure returns (FixedPoint.uq144x112 memory) {
        return FixedPoint.mul(self, y);
    }

    function div(FixedPoint.uq112x112 calldata self, uint112 y) external pure returns (FixedPoint.uq112x112 memory) {
        return FixedPoint.div(self, y);
    }

    function muli(FixedPoint.uq112x112 calldata self, int y) external pure returns (int) {
        return FixedPoint.muli(self, y);
    }

    function fraction(uint112 numerator, uint112 denominator) external pure returns (FixedPoint.uq112x112 memory) {
        return FixedPoint.fraction(numerator, denominator);
    }

    function reciprocal(FixedPoint.uq112x112 calldata self) external pure returns (FixedPoint.uq112x112 memory) {
        return FixedPoint.reciprocal(self);
    }

    function sqrt(FixedPoint.uq112x112 calldata self) external pure returns (FixedPoint.uq112x112 memory) {
        return FixedPoint.sqrt(self);
    }
}
