pragma solidity ^0.5.6;

import "ds-test/test.sol";

import "../../Prototype.sol";
import "../../ERC20Token.sol";
import "../../testSetup/setupShells.sol";

contract DappTest is DSTest, ShellSetup {

    address shell1;
    address shell2;
    address shell3;
    address shell4;
    address shell5;
    address shell6;
    address shell7;
    address shell8;
    address shell9;
    address shell10;
    address shell11;
    uint256 shell1Liquidity;
    uint256 shell2Liquidity;
    uint256 shell3Liquidity;
    uint256 shell4Liquidity;
    uint256 shell5Liquidity;
    uint256 shell6Liquidity;
    uint256 shell7Liquidity;
    uint256 shell8Liquidity;
    uint256 shell9Liquidity;
    uint256 shell10Liquidity;
    uint256 shell11Liquidity;

    function setUp () public {


        setupPool();
        setupTokens();
        shell1 = setupShellAB();
        shell2 = setupShellABC();
        shell3 = setupShellABD();
        shell4 = setupShellABE();
        shell5 = setupShellABF();
        shell6 = setupShellABG();
        shell7 = setupShellABCD();
        shell8 = setupShellABDE();
        shell9 = setupShellABEF();
        shell10 = setupShellABCDE();
        shell11 = setupShellABDEF();

        uint256 amount = 30000 * ( 10 ** 18 );
        uint256 deadline = 0;

        shell1Liquidity = pool.depositLiquidity(shell1, amount, amount, deadline);
        shell2Liquidity = pool.depositLiquidity(shell2, amount, amount, deadline);
        shell3Liquidity = pool.depositLiquidity(shell3, amount, amount, deadline);
        shell4Liquidity = pool.depositLiquidity(shell4, amount, amount, deadline);
        shell5Liquidity = pool.depositLiquidity(shell5, amount, amount, deadline);
        shell6Liquidity = pool.depositLiquidity(shell6, amount, amount, deadline);
        shell7Liquidity = pool.depositLiquidity(shell7, amount, amount, deadline);
        shell8Liquidity = pool.depositLiquidity(shell8, amount, amount, deadline);
        shell9Liquidity = pool.depositLiquidity(shell9, amount, amount, deadline);
        shell10Liquidity = pool.depositLiquidity(shell10, amount, amount, deadline);
        shell11Liquidity = pool.depositLiquidity(shell11, amount, amount, deadline);

        pool.activateShell(shell1);
        pool.activateShell(shell2);
        pool.activateShell(shell3);
        pool.activateShell(shell4);
        pool.activateShell(shell5);
        pool.activateShell(shell6);
        pool.activateShell(shell7);
        pool.activateShell(shell8);
        pool.activateShell(shell9);
        pool.activateShell(shell10);
        pool.activateShell(shell11);

    }


    function testSwapByOriginAtoBWith11Shells () public {

        uint256 deadline = 0;
        uint256 amount = 100 * ( 10 ** 18 );

        // assertEq(
            pool.swapByOrigin(address(testA), address(testB), amount, amount / 2, deadline);
            // 99750623441396508728
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell1, address(testA)),
        //     10025000000000000000000
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell2, address(testA)),
        //     30075000000000000000000
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell1, address(testB)),
        //     9975062344139650872818
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell2, address(testB)),
        //     29925187032418952618454
        // );

    }

}